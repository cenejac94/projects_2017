#!/usr/bin/env julia
###############################################################################

type Student
	name::AbstractString
	surname::AbstractString
	index::AbstractString
	email::AbstractString
	points::Int
end

type Team
	members::Vector{Student}
end

typealias URL AbstractString
type Spec
	text::AbstractString
	resources::Vector{URL}
end

type Solution
	repo::URL
	# Short youtube presentation.
	youtube::URL
	# download.bit HW+SW
	# Could set URL to file in github master blob.
	release_bit::URL
	# Short project documentation.
	# Could set URL to file in github master blob.
	doc::URL
end

type Project
	name::AbstractString
	points::Int
	min_team_members::Int
	team::Team
	spec::Spec
	solution::Solution
	done::Bool
end


###############################################################################

projects = Project[
	Project(
		"麻将 – Mahjong",
		45,
		4,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Skočko",
		40,
		3,
		Team(
			Student[
				Student(
					"Predrag",
					"Sladek",
					"RA-48/2014",
					"pedjasladek@gmail.com",
					0
				),
			]
			
			Student[
				Student(
					"Stefan",
					"Masalusić",
					"RA-193/20Y14",
					"masalusicstefan@gmail.com",
					0
				),
			]
			
			Student[
				Student(
					"Nedeljko",
					"Mutlak",
					"RA-28/2014",
					"nedeljkomutlak@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Super Mario",
		45,
		4,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"2D framebuffer-less GPU",
		45,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Tap That Cat with Colors",
		45,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Pie with Rationals",
		40,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Dimmer",
		45,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Buzzer syntesizer",
		40,
		4,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Pacmen",
		40,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Bilinear Interpolation Co-processor",
		45,
		4,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"CAN network – game of choice",
		45,
		4,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"DMA",
		40,
		2,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Flipper",
		45,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Breakout",
		40,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Galaga",
		45,
		4,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Tenkići",
		40,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Asteroids",
		40,
		3,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
	Project(
		"Dig Dug",
		40,
		4,
		Team(
			Student[
				Student(
					"Ime",
					"Prezime",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y",
		),
		false
	),
]

additional = URL[
	"https://scontent-vie1-1.xx.fbcdn.net/v/t1.0-9/12814673_1680231525591075_1051729422851094889_n.jpg?oh=36529770e78a7aa5f55afd6fe6d8c417&oe=57E5E5FB",
	"https://www.youtube.com/watch?v=RBa6gx5Mx5c",
	"https://scontent-vie1-1.xx.fbcdn.net/v/l/t1.0-9/13502065_1148717698525627_1747866040367180828_n.jpg?oh=10befb12e2527104db88d56c6019f86b&oe=57E81CBE",
	"https://www.youtube.com/watch?v=D3LpQkOpD20",
	"https://www.youtube.com/watch?v=4olSy5UXO_M"
]

###############################################################################

function no_of_students(project::Project)
	if project.team.members[1].name == "??"
		return 0
	else
		return length(project.team.members)
	end
end
N_students = sum(map(no_of_students, projects))
@show N_students

function project_taken(project::Project)
	!any(map((member) -> member.name == "??", project.team.members))
end

for project in projects
	if !project.done && project_taken(project)
		println("Not done: ", project.name)
	end
end

###############################################################################

