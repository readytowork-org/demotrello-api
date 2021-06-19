package models

import (
	"time"
)

// User model
type Board struct {
	ID   uint    `json:"id"`
	Name *string `json:"name"`
	// CreatedBy uuid      `json:"created_by"`
	IsAbsolete bool      `json:"is_absolete"`
	CreatedAt  time.Time `json:"created_at"`
	UpdatedAt  time.Time `json:"updated_at"`
}

// TableName gives table name of model
func (u Board) TableName() string {
	return "board"
}
