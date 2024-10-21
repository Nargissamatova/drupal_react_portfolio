import React, { useEffect, useState } from "react";
import { fetchContent } from "../services/api";
import HeaderComponent from "./HeaderComponent";
import { Container, Row, Col } from "react-bootstrap";
import gif from "../assets/gif.gif";

const Home = () => {
  const [content, setContent] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    fetchContent("node/home")
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
    <div>
      <HeaderComponent />

      <Container
        fluid
        style={{ backgroundColor: "#181C14", padding: "3em", color: "white" }}
      >
        <Row className="align-items-center justify-content-center">
          {/* Left Column for Text */}
          <Col md={6}>
            <h1 style={{ fontSize: "2.5rem", fontWeight: "bold" }}>
              Who am I?
            </h1>

            {content && content.attributes && content.attributes.body ? (
              <div
                dangerouslySetInnerHTML={{
                  __html: content.attributes.body.value,
                }}
              />
            ) : (
              <div>No content available</div>
            )}
          </Col>
        </Row>
      </Container>
    </div>
  );
};

export default Home;
