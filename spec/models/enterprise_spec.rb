require 'rails_helper'

RSpec.describe Enterprise, type: :model do
  before do
    @enterprise = FactoryBot.build(:enterprise)
  end

  describe '投稿' do
    context '投稿ができる時' do
      it 'title, theme, text, industry_idが存在すれば登録できる' do
        expect(@enterprise).to be_valid
      end
    end

    context '投稿できない時' do
      it 'industry_idが空では登録できない' do
        @enterprise.industry_id = ''
        @enterprise.valid?
        expect(@enterprise.errors.full_messages).to include("Industry is not a number")
       end

      it 'industry_idが0の場合出品できない' do
        @enterprise.industry_id = 0
        @enterprise.valid?
        expect(@enterprise.errors.full_messages).to include("Industry must be other than 0")
      end

      it 'titleが空だと登録できない' do
        @enterprise.title = ''
        @enterprise.valid?
        expect(@enterprise.errors.full_messages).to include("Title can't be blank")
      end

      it 'themeが空だと登録できない' do
        @enterprise.theme = ''
        @enterprise.valid?
        expect(@enterprise.errors.full_messages).to include("Theme can't be blank")
      end

      it 'textが空だと登録できない' do
        @enterprise.text = ''
        @enterprise.valid?
        expect(@enterprise.errors.full_messages).to include("Text can't be blank")
      end
    end
  end
end