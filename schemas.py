from pydantic import BaseModel
from datetime import datetime

class SmileageCreate(BaseModel):
    mileage: int
    emotion: str
    probability: float

    class Config:
        orm_mode = True
