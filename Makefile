RDBASE = ${HOME}/.conda/envs/rdkit2015.03.1

LDFLAGS = -L${RDBASE}/lib  \
-lFileParsers \
-lGraphMol \
-lDataStructs \
-lEigenSolvers \
-lRDGeometryLib \
-lRDGeneral \
-lboost_thread -lboost_system

CPPFLAGS = -O2 -Wno-deprecated -DUSE_EIGEN2 \
-I${RDBASE}/include \
-I${RDBASE}/include/rdkit \
-I${RDBASE}/include/eigen3

%.o : %.cpp PBFRDKit.h
	$(CXX) $(CPPFLAGS)  -c -o $@ $< 

demo.exe: demo.o PBFRDKit.o 
	$(CXX) -o $@ $< PBFRDKit.o $(LDFLAGS) -Wl,-rpath=${RDBASE}/lib
