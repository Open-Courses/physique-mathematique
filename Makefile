SRC_DIR	= src
NAME	= Physique.Math
CC		= pdflatex
SRC		= $(NAME).tex

$(NAME):
	cd $(SRC) && $(CC) -output-directory ../ "\def\outputproof{0} \input{$(SRC)}"
	cd $(SRC) && $(CC) -output-directory ../ "\def\outputproof{0} \input{$(SRC)}"

noproof:
	cd $(SRC) && $(CC) -output-directory ../ $(SRC)
	cd $(SRC) && $(CC) -output-directory ../ $(SRC)

zip: fclean $(NAME)
	$(MAKE) clean
	zip -r $(NAME).zip . -x *.git*

clean:
	rm -f $(NAME).out $(NAME).aux $(NAME).toc $(NAME).log $(NAME).tex.backup

fclean: clean
	rm -f $(NAME).pdf $(NAME).zip
