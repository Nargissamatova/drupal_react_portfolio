import React, { useEffect, useState } from "react";
import { fetchContent } from "../services/api";

import Carousel from "react-bootstrap/Carousel";
import Card from "react-bootstrap/Card";
import { Container, Row, Col } from "react-bootstrap";

import project1 from "../assets/project1.png";
import project2 from "../assets/project2.png";
import project3 from "../assets/project3.png";

const About = () => {
  const [content, setContent] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    fetchContent("node/about")
      .then((data) => {
        console.log("Fetched data:", data); // Log the fetched data
        setContent(data.data[0]); // Access the first item in the data array
        setLoading(false);
      })
      .catch((error) => {
        console.error("Error fetching content:", error); // Log any errors
        setError(error);
        setLoading(false);
      });
  }, []);

  if (loading) {
    return <div>Loading...</div>;
  }

  if (error) {
    return <div>Error loading content: {error.message}</div>;
  }

  return (
    <div style={{ paddingTop: "70px" }}>
      <h1 className="text-center p-5">About</h1>
      <Container
        style={{
          backgroundColor: "#789DBC",
          padding: "5em",
          color: "white",
        }}
      >
        {content && content.attributes && content.attributes.body ? (
          <div
            className="d-flex justify-content-center"
            dangerouslySetInnerHTML={{ __html: content.attributes.body.value }}
          />
        ) : (
          <div>No content available</div>
        )}
      </Container>

      <Container
        fluid
        style={{
          backgroundColor: "#181C14",
          padding: "3em",
          marginTop: "3em",
          color: "white",
        }}
      >
        <h1 className="text-center p-5">My Work</h1>

        <Carousel>
          <Carousel.Item>
            <Row>
              <Col md={4}>
                <Card>
                  <Card.Img variant="top" src={project1} />
                  <Card.Body>
                    <Card.Title>Food Recipe Website</Card.Title>
                  </Card.Body>
                </Card>
              </Col>

              <Col md={4}>
                <Card>
                  <Card.Img variant="top" src={project2} />
                  <Card.Body>
                    <Card.Title>Travel Planner</Card.Title>
                  </Card.Body>
                </Card>
              </Col>

              <Col md={4}>
                <Card>
                  <Card.Img variant="top" src={project3} />
                  <Card.Body>
                    <Card.Title>Tic-Tac-Toe Game</Card.Title>
                  </Card.Body>
                </Card>
              </Col>
            </Row>
          </Carousel.Item>
          <Carousel.Item>
            <Row>
              <Col md={4}>
                <Card>
                  <Card.Img variant="top" src={project1} />
                  <Card.Body>
                    <Card.Title>Food Recipe Website</Card.Title>
                  </Card.Body>
                </Card>
              </Col>

              <Col md={4}>
                <Card>
                  <Card.Img variant="top" src={project2} />
                  <Card.Body>
                    <Card.Title>Travel Planner</Card.Title>
                  </Card.Body>
                </Card>
              </Col>

              <Col md={4}>
                <Card>
                  <Card.Img variant="top" src={project3} />
                  <Card.Body>
                    <Card.Title>Tic-Tac-Toe Game</Card.Title>
                  </Card.Body>
                </Card>
              </Col>
            </Row>
          </Carousel.Item>
        </Carousel>
      </Container>
    </div>
  );
};

export default About;
