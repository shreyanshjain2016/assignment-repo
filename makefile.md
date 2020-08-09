@@ -0,0 +1,10 @@
README.md: 
	@echo "## Project: The Unix Workbench Week 4 Exercise" > README.md
	@echo -n "- This README.md file was generated on " >> README.md
	@date >> README.md
	@echo -n "- The guessinggame.sh file contains " >> README.md
	@echo -n $$(cat guessinggame.sh | wc -l) >> README.md
	@echo " lines of code" >> README.md

clean:
	rm README.md

