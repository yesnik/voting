# -*- encoding:utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Nomination.create([
    {title: 'Лучший повар', description: 'Описание номинации поваров'},
    {title: 'Лучший электрик', description: 'Описание номинации электриков'},
    {title: 'Лучший тестировщик', description: 'Описание номинации тестировщиков'}
])

nomination_1 = Nomination.find(1)
nomination_2 = Nomination.find(2)

Candidate.create([
    {first_name: 'Иван', last_name: 'Иванов'},
    {first_name: 'Вася', last_name: 'Петров'},
    {first_name: 'Денис', last_name: 'Кораблев'}
])

candidate_1 = Candidate.find(1)
candidate_2 = Candidate.find(2)

Vote.create([
    {candidate: candidate_1, nomination: nomination_1, ip: '123.11.20.22'},
    {candidate: candidate_1, nomination: nomination_2, ip: '123.11.20.22'},
    {candidate: candidate_2, nomination: nomination_2, ip: '11.11.20.21'}
])