/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function(knex) {
  return knex.schema.alterTable('books', function(table){
    table.integer('authorId') //Tipo do campo / Nome do campo
    .unsigned() // precisa ser um numero inteiro //seila wtf
    .notNullable() // nao vo nem fala kjllkjjkjkllkj
    .references('id') // referência do campo na tabela (qualquer)
    .inTable('authors') // nome da tabela pai
    .onDelete('CASCADE') // Quando for deletado
  })
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function(knex) {
  return knex.schema.dropTable('authors', function(table){
  table.dropForeign('authorId')
  table.dropColumn('authorId')    
  })
};
