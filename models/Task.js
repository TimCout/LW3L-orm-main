import Model from './Model.js';

export default class Television extends Model {

  static table = "schema.tv";
  static primary = ["idtv"];
}
