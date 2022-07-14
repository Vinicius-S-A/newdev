const database = require('../databases/knex');
const logger = require('../utils/logger')


exports.findAll = async (request, response) => {
  try {
    const sql = await database.select([
      'books.id', 'books.titulo', 'authors.name'
    ])
    .from('books').innerJoin('authors','authors.id', 'books.authorId')

    return response.status(200)
      .send({
        books: sql
      });
  } catch (error) {
    logger(error.message)
    return response.status(500)
    
      .send({ error: error?.message || e });
  }
}

exports.create = async (request, response) => {
  try {
    await database('books').insert(request.body);

    return response.status(200).send({
      status: 'success'
    });
  } catch (error) {
    logger(error.message)

    return response.status(500).send({ error: error?.message || e });
  }
}

exports.getById = async (request, response) => {
  try {
    const params = request.params;
    const [previousBook] = await database
      .select('*')
      .from('books')
      .where({ id: params.id })
      .limit(1);

    if (!previousBook) {
      return response.status(404)
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }
    return response
      .status(200)
      .send({ data: previousBook });
  } catch (error) {
    logger(error.message)

    return response.status(500).send({ error: error?.message || e });
  }
}

exports.deleteById = async (request, response) => {
  try {
    const params = request.params;
    const [previousBook] = await database
      .select('*')
      .from('books')
      .where({ id: params.id })
      .limit(1);

    if (!previousBook) {
      return response.status(404) 
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }
    const nextBook = request.body;

    await database
      .delete({ title: nextBook.title })
      .from('books')
      .where({ id: previousBook.id });

    return response
      .status(200)
      .send({ status: 'Registro atualizado com sucesso', data: nextBook });
  } catch (error) {
    logger(error.message)

    return response.status(500).send({ error: error?.message || e });
  }
}

exports.put = async (request, response) => {
  try {
    const params = request.params;
    const [previousBook] = await database
      .select('*')
      .from('books')
      .where({ id: params.id })
      .limit(1);

    if (!previousBook) {
      return response.status(404) 
        .send(`O registro com id: ${params.id} não foi encontrado!`);
    }
    const nextBook = request.body;

    await database
      .update({ title: nextBook.title })
      .from('books')
      .where({ id: previousBook.id });

    return response
      .status(200)
      .send({ status: 'Registro atualizado com sucesso', data: nextBook });
  } catch (error) {
    logger(error.message)

    return response.status(500).send({ error: error?.message || e });
  }
}
