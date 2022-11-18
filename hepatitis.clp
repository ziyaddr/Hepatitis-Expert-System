(defrule is-HBsAG
=>
    (printout t "HBsAG?")
    (assert (HBsAG (read)))
)

(defrule is-anti-HDV
    (HBsAG positive)
=>
    (printout t "anti-HDV?")
    (assert (anti-HDV (read)))
)

(defrule is-anti-HBc
    (HBsAG positive)
    (anti-HDV negative)
=>
    (printout t "anti-HBc?")
    (assert (anti-HBc (read)))
)

(defrule hepatitis-B+D
    (HBsAG positive)
    (anti-HDV positive)
=>
    (printout t "Hepatitis B + D" crlf)
)

(defrule is-anti-HBs
    (HBsAG positive)
    (anti-HDV negative)
    (anti-HBc positive)
=>
    (printout t "anti-HBs?")
    (assert (anti-HBs (read)))
)

(defrule uncertain
    (HBsAG positive)
    (anti-HDV negative)
    (anti-HBc negative)
=>
    (printout t "Uncertain" crlf)
)

(defrule uncertain2
    (HBsAG positive)
    (anti-HDV negative)
    (anti-HBc positive)
    (anti-HBs positive)
=>
    (printout t "Uncertain" crlf)
)

(defrule is-IgM-anti-HBc
    (HBsAG positive)
    (anti-HDV negative)
    (anti-HBc positive)
    (anti-HBs negative)
=>
    (printout t "IgM-anti-HBc?")
    (assert (IgM-anti-HBc (read)))
)

(defrule acute-infection
    (HBsAG positive)
    (anti-HDV negative)
    (anti-HBc positive)
    (anti-HBs negative)
    (IgM-anti-HBc positive)
=>
    (printout t "acute infection" crlf)
)

(defrule chronic-infection
    (HBsAG positive)
    (anti-HDV negative)
    (anti-HBc positive)
    (anti-HBs negative)
    (IgM-anti-HBc negative)
=>
    (printout t "chronic infection" crlf)
)

(defrule is-anti-HBs2
    (HBsAG negative)
=>
    (printout t "anti-HBs?")
    (assert (anti-HBs (read)))
)


(defrule is-anti-HBc2
    (HBsAG negative)
    (anti-HBs positive)
=>
    (printout t "anti-HBc?")
    (assert (anti-HBc (read)))
)

(defrule is-anti-HBc3
    (HBsAG negative)
    (anti-HBs negative)
=>
    (printout t "anti-HBc?")
    (assert (anti-HBc (read)))
)

(defrule unclear
    (HBsAG negative)
    (anti-HBs negative)
    (anti-HBc positive)
=>
    (printout t "Unclear" crlf)
)

(defrule healthy-not-vaccinated
    (HBsAG negative)
    (anti-HBs negative)
    (anti-HBc negative)
=>
    (printout t "Healthy, not vaccinated" crlf)
)

(defrule cured
    (HBsAG negative)
    (anti-HBs positive)
    (anti-HBc positive)
=>
    (printout t "cured" crlf)
)

(defrule vaccinated
    (HBsAG negative)
    (anti-HBs positive)
    (anti-HBc negative)
=>
    (printout t "vaccinated" crlf)
)