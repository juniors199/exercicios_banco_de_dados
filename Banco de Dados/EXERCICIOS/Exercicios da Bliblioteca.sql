-- 1)
SELECT p.Nome, e.Titulo FROM pessoa AS p JOIN autor_exemplar AS ae ON p.CPF = ae.CPF  
						  JOIN exemplar AS e ON ae.CodExem = e.CodExem;

-- 2)
SELECT p.Nome, e.Titulo FROM pessoa AS p JOIN autor_exemplar AS ae ON p.CPF = ae.CPF  
						  JOIN exemplar AS e ON ae.CodExem = e.CodExem 
                          WHERE p.Nome = "Felipe Duarte";

-- 3)						
SELECT l.Nome, e.Titulo FROM livraria AS l JOIN livraria_exemplar AS le ON l.CNPJ = le.CNPJ 
							JOIN exemplar AS e ON le.CodExem = e.CodExem;
                            
-- 4) 
SELECT * FROM livraria AS l JOIN livraria_exemplar AS le ON l.CNPJ = le.CNPJ 
							JOIN exemplar AS e ON le.CodExem = e.CodExem;
                            JOIN autor_exemplar AS ae ON  le.CodExem = ae.CodExem


