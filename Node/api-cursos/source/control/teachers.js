const database = require('../databases/knex');

exports.listThemAll = async (req, res) => {
  try {
    const sql = await database.select('*').from('teachers');

    return res.status(200)
      .send({
        teachers: sql
      });
  } catch (error) {
    return res.status(500)
      .send({ error: error?.message || e });
    }
}

exports.create = async (req, res) => {
  try {
    await database('teachers').insert(req.body);

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

    const [previousTeacher] = await database
      .select('*')
      .from('teachers')
      .where({ id: params.id })
      .limit(1);

    if (!previousTeacher) {
      return res.status(404)
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }
    return res
      .status(200)
      .send({ data: previousTeacher });
  } catch (error) {

    return res.status(500).send({ error: error?.message || e });
  }
}

exports.delete = async (req, res) => {
  try {
    const params = req.params;

    const [previousTeacher] = await database
      .select('*')
      .from('teachers')
      .where({ id: params.id })
      .limit(1);

    if (!previousTeacher) {
      return res.status(404)
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }

    const nextTeacher = req.body;

    await database
      .delete({ name: nextTeacher.name })
      .from('teachers')
      .where({ id: previousTeacher.id });

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

    const [previousTeacher] = await database
      .select('*')
      .from('authors')
      .where({ id: params.id })
      .limit(1);

    if (!previousTeacher) {
      return res.status(404)
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }

    const nextTeacher = req.body;

    await database
      .update({ name: nextTeacher.name })
      .from('authors')
      .where({ id: previousTeacher.id });

    return res
      .status(200)
      .send({ status: 'Registro removido com sucesso' });
  } catch (error) {

    return res.status(500).send({ error: error?.message || e });
  }
}