
#import "./autoeqnum.typ": autoeqnum
#set heading(numbering: "1.")
#show heading.where(level: 2): set heading(level: 1)
#show heading.where(level: 2): it => {
	counter(math.equation).update(0)
	it
}
#show: autoeqnum.with(mode: "label", numbering: it => {
	let count = counter(heading.where(level: 1)).get().first()
	numbering("(1.1)", count, it)
})

== Section 1

$ a^2 + b^2 = c^2 $ <label1>

== Section 2

$ a^2 + b^2 = c^2 $ <label2>
