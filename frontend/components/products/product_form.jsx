// import React from "react";

// class ProductForm extends React.Component {
//   constructor(props) {
//     super(props);
//     this.state = {
//       name: "",
//       price: 1,
//       exterior_color: "",
//       interior_color: "",
//       wheel_type: "",
//       trim: "",
//       self_driving: true,
//     };
//     this.updateName = this.updateName.bind(this);
//     this.updatePrice = this.updatePrice.bind(this);
//     this.updateExteriorColor = this.updateExteriorColor.bind(this);
//     this.updateInteriorColor = this.updateInteriorColor.bind(this);
//     this.updateWheelType = this.updateWheelType.bind(this);
//     this.updateTrim = this.updateTrim.bind(this);
//     this.updateSelfDriving = this.updateSelfDriving.bind(this);

//     this.handleSubmit = this.handleSubmit.bind(this);
//   }

//   updateName(e) {
//     this.setState({ name: e.currentTarget.value });
//   }

//   updatePrice(e) {
//     this.setState({ price: e.currentTarget.value });
//   }

//   updateExteriorColor(e) {
//     this.setState({ exterior_color: e.currentTarget.value });
//   }

//   updateInteriorColor(e) {
//     this.setState({ interior_color: e.currentTarget.value });
//   }

//   updateWheelType(e) {
//     this.setState({ wheel_type: e.currentTarget.value });
//   }

//   updateTrim(e) {
//     this.setState({ trim: e.currentTarget.value });
//   }

//   updateSelfDriving(e) {
//     this.setState({ self_driving: e.currentTarget.value });
//   }

//   handleSubmit(e) {
//     e.preventDefault();
//     this.props.createProduct(this.state);
//   }

//   render() {
//     return (
//       <form className="" onSubmit={this.handleSubmit}>
//         <h1>Customize Your Volta</h1>

//         <label>Name</label>
//           <input
//             type="text"
//             value={this.state.name}
//             onChange={this.updateName}
//           />
//         <label>Price</label>
//           <input
//             type="text"
//             value={this.state.price}
//             onChange={this.updatePrice}
//           />
//         <label>Exterior Color</label>
//           <input
//             type="text"
//             value={this.state.exterior_color}
//             onChange={this.updateExteriorColor}
//           />
//         <label>Interior Color</label>
//           <input
//             type="text"
//             value={this.state.interior_color}
//             onChange={this.updateInteriorColor}
//           />
//         <label>Wheel Type</label>
//           <input
//             type="text"
//             value={this.state.wheel_type}
//             onChange={this.updateWheelType}
//           />
//         <label>Trim</label>
//           <input
//             type="text"
//             value={this.state.trim}
//             onChange={this.updateTrim}
//           />
//         <label>Self Driving</label>
//           <input
//             type="text"
//             value={this.state.self_driving}
//             onChange={this.updateSelfDriving}
//           />

//         <input type="submit" value="Add Volta"></input>
//       </form>
//     );
//   }
// }

// export default ProductForm;
