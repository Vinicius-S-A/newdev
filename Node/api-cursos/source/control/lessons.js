const database = require('../databases/knex');

exports.listThemAll = async (req, res) => {
  try {
    const sql = await database.select([
      'lessons.id', 'lessons.title','lessons.description','lessons.link', 'teachers.name as teacher'
    ])
    .from('lessons').innerJoin('teachers','teachers.id', 'lessons.teacher')


    return res.status(200)
      .send({
        lessons: sql
      });
  } catch (error) {
    return res.status(500)
      .send({ error: error?.message || e });
    }
}

exports.create = async (req, res) => {
  try {
    await database('lessons').insert(req.body);

    return res.status(200).send({
      status: 'success'
    });
  } catch (error) {

    return res.status(500).send({ error: error?.message || e });
  }
}

exports.getById = async (req, res) => {
  try {
    const params = req.params;

    const [previousLesson] = await database
      .select('*')
      .from('lessons')
      .where({ id: params.id })
      .limit(1);

    if (!previousLesson) {
      return res.status(404)
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }
    return res
      .status(200)
      .send({ data: previousLesson });
  } catch (error) {

    return res.status(500).send({ error: error?.message || e });
  }
}

exports.delete = async (req, res) => {
  try {
    const params = req.params;

    const [previousLesson] = await database
      .select('*')
      .from('lessons')
      .where({ id: params.id })
      .limit(1);

    if (!previousLesson) {
      return res.status(404)
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }

    const nextLesson = req.body;

    await database
      .delete({ title: nextLesson.title })
      .from('lessons')
      .where({ id: previousLesson.id });

    return res
      .status(200)
      .send({ status: 'Registro removido com sucesso' });
  } catch (error) {

    return res.status(500).send({ error: error?.message || e });
  }
}

exports.update = async (req, res) => {
  try {
    const params = req.params;

    const [previousLesson] = await database
      .select('*')
      .from('authors')
      .where({ id: params.id })
      .limit(1);

    if (!previousLesson) {
      return res.status(404)
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }

    const nextLesson = req.body;

    await database
      .update({ title: nextLesson.title })
      .from('authors')
      .where({ id: previousLesson.id });

    return res
      .status(200)
      .send({ status: 'Registro removido com sucesso' });
  } catch (error) {

    return res.status(500).send({ error: error?.message || e });
  }
}