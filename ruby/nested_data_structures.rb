wrigley_field = {
   park_info: {
    :seats => '45,000',
    :teams => '1',
      team_nicknames: [
       'The North-siders',
       'Cubbies',
       'The Loveable Loser'
     ]
   },
  parts_of_stadium: {
    :bleachers => '6000',
    :rest_stadium => '39,000',
      inside_park: [
       'Infield',
       'Center Field',
       'Right Field',
       'Left Field',
       'Press Box'
    ]
  },
   on_field: {
   :bases => '4' ,
   :bases => '9' ,
   :players_per_team => '40',

    some_positions: [
      'shortstop',
      'pitcher',
      'catcher',
      'Fans, they count as well',
      'First Base'
      ]

  }
}

p wrigley_field[:on_field][:bases]

p wrigley_field[:on_field][:some_positions][3]

p wrigley_field[:park_info][:team_nicknames][2]

wrigley_field[:on_field][:some_positions].push('Right Field')

p wrigley_field[:on_field][:some_positions]

