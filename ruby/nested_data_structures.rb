march_madness = {
	one_seed: {
		"Villanova" => "Eliminated",
		"Kansas" => "Alive",
		"UNC" => "Alive",
		"Gonzaga" => "Alive"
	},
	two_seed: {
		"Kentucky" => "Alive",
		"Louisville" => "Eliminated",
		"Duke" => "Eliminated",
		"Arizona" => "Alive"
	},
	three_seed: {
		"UCLA" => "Alive",
		"Baylor" => "Alive",
		"Oregon" => "Alive",
		"FSU" => "Eliminated"
	}
}

p march_madness[:two_seed]

p march_madness[:three_seed]["UCLA"]

p march_madness.delete_if {|team, status| status == "Eliminated"}

