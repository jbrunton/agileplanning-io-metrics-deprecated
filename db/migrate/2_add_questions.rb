class AddQuestions < ActiveRecord::Migration
  def up
    Question.create title: 'Support',
        description: 'Awesome: We always get great support & help when we ask for it! OR: We keep getting stuck because we can’t get the support & help that we ask for.'
    Question.create title: 'Teamwork',
        description: 'We feel that the communication within the Team is easy and happens often enough. There are no grudges or bad feelings. We receive enough mentoring on this subject.'
    Question.create title: 'Pawns/Players',
        description: 'As individuals and as a Team we feel that in the big picture we are more than just chess-pawns, game pieces to be moved around. We feel that we are actually players who decide where the pawns are moved.'
    Question.create title: 'Mission',
        description: 'It is very clear to us what the mission and vision of our work is. The mission is defined as are the values behind it. The Product Owner updates us on the direction where we should be headed and ensures that our understanding of the mission is updated. We understand what is value to the customer through a perfectly sharpened blade-like Product Backlog.'
    Question.create title: 'Codebase Health',
        description: 'As a team and as individuals we feel that the current state of our code-base is very healthy, it can be easily read, tested against and re-factored. If a major changes to the software came tomorrow we would smile because it would be so easy to add it due to the dynamic architecture design and easily manageable code-base we have.'
    Question.create title: 'Ease of Release',
        description: 'Awesome: Releasing is simple, safe, painless & mostly automated. OR: Releasing is risky, painful, lots of manual work, and takes forever.'
    Question.create title: 'Learning',
        description: 'Awesome: We’re learning lots of interesting stuff all the time! OR: We never have time to learn anything'
    Question.create title: 'Delivering Value',
        description: 'Our Team has a strong feeling that each Iteration very valuable pieces of software are being delivered to the customer with shining, outstandingly honed quality. Our work is brutally measured against a crystal clear Definition of Done and an Acceptance Criteria and change is welcome.'
    Question.create title: 'Suitable Process',
        description: 'In cooperation with the ScrumMaster or Agile Coach we have crafted ourselves a rock solid process that yields high value stream of features at a steady pace Iteration by Iteration. We do not fear outside interferences, the process does not slow us down, it is not in our way, it is there to serve us so that we can serve the customer.'
    Question.create title: 'Fun',
        description: 'Our Team is having so much fun that it hardly seems like work coming here on Monday morning.'
  end

  def down
    Question.delete_all
  end
end
