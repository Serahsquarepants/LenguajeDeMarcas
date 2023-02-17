let $libro := doc("libreria.xml")/bookstore/book/price
let $max := max($libro)
let $min := min($libro)
return <result>Max: {$max}; Min: {$min}</result>