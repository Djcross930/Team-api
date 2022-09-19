User.create!([
  {name: "Dan", email: "dan@dan.com", password_digest: "$2a$12$fnQ4jPQXf7dbDr/WPZsC..Zf2xN4/uLOogtZOpyRdE1lwLmeFPMKq"}
])
Student.create!([
  {first_name: "Dan", last_name: "cross", email: "dancross96@gmail.com", phone_number: "222333444", short_bio: "a young coder", linked_in: "linkedin.com/dan", twitter: "twitter.com/dan", blog_or_website: "dan.com/dan", online_resume: "resume.dan.com", github: "github.com/dan", photo: "dan.jpg", user_id: 1}
])
Skill.create!([
  {skill: "HTML", student_id: 1},
  {skill: "Ruby", student_id: 1}
])
Experience.create!([
  {start_date: nil, end_date: nil, job_title: "office manager", company_name: "pat cross dds", details: "managed office", student_id: 1}
])
Education.create!([
  {start_date: nil, end_date: nil, degree: "biology", university_name: "northeastern illinois", student_id: 1}
])
Capstone.create!([
  {name: "geneViewer", description: "view a gene", url: "geneViewer.com", screenshot: "gene.jpg", student_id: 1}
])
