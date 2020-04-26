#pragma once
#include <vector>
#include <array>
#include <Eigen/Core>

namespace Mtree
{
	using Vector3 = Eigen::Vector3f;
	using Vector2 = Eigen::Vector2f;

	class Mesh
	{
	public:
		std::vector<Vector3> vertices;
		std::vector<Vector3> normals;
		std::vector<Vector2> uvs;
		std::vector<std::vector<int>> polygons;

		Mesh() {};
		Mesh(std::vector<Vector3>&& vertices) { this->vertices = std::move(vertices); }

		std::vector<std::vector<float>> get_vertices();
		std::vector<std::vector<int>> get_polygons() { return this->polygons; };
	};
}