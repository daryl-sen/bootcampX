const args = process.argv.slice(2);

const cohortName = args[0];
const maxResults = Number(args[1]) || 5;
const values = [`%${cohortName}%`, maxResults];

const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const queryString = `
SELECT students.id, students.name, cohorts.name
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
LIMIT $2;
`;

pool.query(queryString, values)
.then(res => {
  console.log(res.rows);
})
.catch(err => console.error('query error', err.stack));