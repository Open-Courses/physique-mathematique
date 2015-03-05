Physique mathématique
=====================

### Source files:
  - macros_math.tex: new commands and definition
  - include_thm: define numbering environnement and new environnement

### Makefile
  Use it to simplify compilation:
    - make : compile all tex files and output in pdf.
    - make clean : remove all files created during compilation except pdf file.
    - make fclean : remove all files created during compilation including pdf file.
    - make zip : compile all tex files and create a zip file with tex files, makefile, and the generated pdf file, and cleans files after.
