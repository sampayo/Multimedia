# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111205010537) do

  create_table "comentarios", :force => true do |t|
    t.text     "comentario"
    t.integer  "usuarios_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "configuracions", :force => true do |t|
    t.string   "fodo"
    t.integer  "usuarios_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "seguidores", :force => true do |t|
    t.integer  "usuarios_id"
    t.integer  "seguidor_id"
    t.integer  "simpatia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nombre"
    t.string   "seudonimo"
    t.string   "pass"
    t.text     "biografia"
    t.string   "web"
    t.string   "lenguaje"
    t.string   "foto"
    t.string   "zonah"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
