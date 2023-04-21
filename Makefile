CXX = g++
CXXFLAGS = -Wall -O3 -std=c++17
SRC_DIR = src
BIN_DIR = bin
INCLUDES = -I/opt/homebrew/include
LIBS = -L/opt/homebrew/lib -lglfw -lGLEW -framework OpenGL

SRCS = $(wildcard $(SRC_DIR)/*.cpp)
BINS = $(patsubst $(SRC_DIR)/%.cpp,$(BIN_DIR)/%,$(SRCS))

.PHONY: all clean

all: $(BINS)

$(BIN_DIR)/HelloOpenGL: $(SRC_DIR)/HelloOpenGL.cpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(LIBS) $< -o $@

$(BIN_DIR)/HelloQuaternion: $(SRC_DIR)/HelloQuaternion.cpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(LIBS) $< -o $@

$(BIN_DIR)/LitCube: $(SRC_DIR)/LitCube.cpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(LIBS) $< -o $@

$(BIN_DIR)/DragLitCube: $(SRC_DIR)/DragLitCube.cpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(LIBS) $< -o $@

$(BIN_DIR)/DragLitCat: $(SRC_DIR)/DragLitCat.cpp | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(LIBS) $< -o $@

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

clean:
	rm -rf $(BIN_DIR)
