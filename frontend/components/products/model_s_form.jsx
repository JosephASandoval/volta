// import React from "react";

// class ModelSForm extends React.Component {
//   constructor(props) {
//     super(props);
//     this.state = {
//       name: "Model S",
//       exterior: "Pearl White Multi-Coat",
//       interior_color: "All Black",
//       wheel_type: '19"Tempest Wheels',
//       self_driving: false,
//       view: "front",
//     };

//     this.updateExterior = this.updateExterior.bind(this);
//     this.updateInteriorColor = this.updateInteriorColor.bind(this);
//     this.updateWheelType = this.updateWheelType.bind(this);
//     this.updateSelfDriving = this.updateSelfDriving.bind(this);
//     this.updateView = this.updateView.bind(this);

//     this.handleSubmit = this.handleSubmit.bind(this);
//   }

//   updateExterior(e) {
//     this.setState({ exterior: e.currentTarget.value });
//   }

//   updateInteriorColor(e) {
//     this.setState({ interior_color: e.currentTarget.value });
//   }

//   updateWheelType(e) {
//     this.setState({ wheel_type: e.currentTarget.value });
//   }
  
//   updateSelfDriving(e) {
//     this.setState({ self_driving: e.currentTarget.value });
//   }
  
//   updateView(e) {
//     this.setState({ view: e.currentTarget.value });
//   }

//   handleSubmit(e) {
//     e.preventDefault();
//     this.props.requestProduct(this.state);
//   }

//   render() {
//     return (
//       <form className="" onSubmit={this.handleSubmit}>
//         <h1>Customize Your ModelS</h1>

//         <label>Name</label>
//           <input
//             type="text"
//             value={this.state.name}
//           />
//         <label>Price</label>
//           <input
//             type="text"
//             value={this.state.price}
//           />
//         <label>Exterior</label>
//           <input
//             type="text"
//             value={this.state.exterior}
//             onChange={this.updateExterior}
//           />
//         <label>Interior Color</label>
//           <input
//             type="text"
//             value={this.state.interior_color}
//             onChange={this.updateInteriorColor}
//           />
//         <label>Interior Name</label>
//           <input
//             type="text"
//             value={this.state.interior_color}
//           />
//         <label>Wheel Type</label>
//           <input
//             type="text"
//             value={this.state.wheel_type}
//             onChange={this.updateWheelType}
//           />
//         <label>Self Driving</label>
//           <input
//             type="text"
//             value={this.state.self_driving}
//             onChange={this.updateSelfDriving}
//           />
//         <label>View</label>
//           <input
//             type="text"
//             value={this.state.view}
//             onChange={this.updateView}
//           />

//         <input type="submit" value="Add ModelS"></input>
//       </form>
//     );
//   }
// }

// export default ModelSForm;
