const database = require('../databases/knex');

exports.listThemAll = async (req, res) => {
  try {
    const sql = await database.select('*').from('cursos');

    return res.status(200)
      .send({
        cursos: sql
      });
  } catch (error) {
    return res.status(500)
      .send({ error: error?.message || e });
    }
}

exports.create = async (req, res) => {
  try {
    await database('cursos').insert(req.body);

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

    const [previousCurso] = await database
      .select('*')
      .from('cursos')
      .where({ id: params.id })
      .limit(1);

    if (!previousCurso) {
      return res.status(404)
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }
    return res
      .status(200)
      .send({ data: previousCurso });
  } catch (error) {

    return res.status(500).send({ error: error?.message || e });
  }
}

exports.delete = async (req, res) => {
  try {
    const params = req.params;

    const [previousCurso] = await database
      .select('*')
      .from('cursos')
      .where({ id: params.id })
      .limit(1);

    if (!previousCurso) {
      return res.status(404)
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }

    const nextCurso = req.body;

    await database
      .delete({ title: nextCurso.title })
      .from('cursos')
      .where({ id: previousCurso.id });

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

    const [previousCurso] = await database
      .select('*')
      .from('cursos')
      .where({ id: params.id })
      .limit(1);

    if (!previousCurso) {
      return res.status(404)
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }

    const nextCurso = req.body;

    await database
      .update({ title: nextCurso.title })
      .from('authors')
      .where({ id: previousCurso.id });

    return res
      .status(200)
      .send({ status: 'Registro updateado com sucesso' });
  } catch (error) {

    return res.status(500).send({ error: error?.message || e });
  }
}

