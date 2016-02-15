# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Create Seasons
Season.create(start_date: '2016-02-12 20:58:01 -0500')

# Create Teams
teams = Team.create([
    { location: 'Buffalo', name: 'Bills' },
    { location: 'Miami', name: 'Dolphins' },
    { location: 'New England', name: 'Patriots' },
    { location: 'New York', name: 'Jets' },
    { location: 'Dallas', name: 'Cowboys' },
    { location: 'New York', name: 'Giants' },
    { location: 'Philadelphia', name: 'Eagles' },
    { location: 'Washington', name: 'Redskins' },
    { location: 'Baltimore', name: 'Ravens' },
    { location: 'Cincinnati', name: 'Bengals' },
    { location: 'Cleveland', name: 'Browns' },
    { location: 'Pittsburgh', name: 'Steelers' },
    { location: 'Chicago', name: 'Bears' },
    { location: 'Detroit', name: 'Lions' },
    { location: 'Green Bay', name: 'Packers' },
    { location: 'Minnesota', name: 'Vikings' },
    { location: 'Houston', name: 'Texans' },
    { location: 'Indianapolis', name: 'Colts' },
    { location: 'Jacksonville', name: 'Jaguars' },
    { location: 'Tennessee', name: 'Titans' },
    { location: 'Atlanta', name: 'Falcons' },
    { location: 'Carolina', name: 'Panthers' },
    { location: 'New Orleans', name: 'Saints' },
    { location: 'Tampa Bay', name: 'Buccaneers' },
    { location: 'Denver', name: 'Broncos' },
    { location: 'Kansas City', name: 'Chiefs' },
    { location: 'Oakland', name: 'Raiders' },
    { location: 'San Diego', name: 'Chargers' },
    { location: 'Arizona', name: 'Cardinals' },
    { location: 'San Francisco', name: '49ers' },
    { location: 'Seattle', name: 'Seahawks' },
    { location: 'Los Angeles', name: 'Rams' }
  ])
