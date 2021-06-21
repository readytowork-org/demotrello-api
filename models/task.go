package models

import (
	"time"
)

// User model
type Task struct {
	ID         uint      `json:"id"`
	Name       *string   `json:"name"`
	Picture    *string   `json:"picture"`
	BoardId    *string   `json:"board_id"` //needforeignkey
	Status     *string   `json:"status"`
	CreatedBy  *string   `json:"created_by"`
	DragedBy   *string   `json:"draged_by"`
	IsAbsolete bool      `json:"is_absolete"`
	CreatedAt  time.Time `json:"created_at"`
	UpdatedAt  time.Time `json:"updated_at"`
}

// TableName gives table name of model
func (u Task) TableName() string {
	return "task"
}
