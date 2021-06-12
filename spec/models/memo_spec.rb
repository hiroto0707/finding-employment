require 'rails_helper'

RSpec.describe Memo, type: :model do
  before do
    @memo = FactoryBot.build(:memo)
  end

  describe 'メモ投稿' do
    context 'メモ投稿ができる時' do
      it 'title, selection_status, body, industry_idが存在すれば登録できる' do
        expect(@memo).to be_valid
      end
    end

    context 'メモ投稿ができない時' do
      it 'industry_idが空では登録できない' do
        @memo.industry_id = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Industry is not a number")
       end

      it 'industry_idが0の場合出品できない' do
        @memo.industry_id = 0
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Industry must be other than 0")
      end

      it 'titleが空だと登録できない' do
        @memo.title = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Title can't be blank")
      end
  
      it 'selection_statusが空だと登録できない' do
        @memo.selection_status = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Selection status can't be blank")
      end

      it 'bodyが空だと登録できない' do
        @memo.body = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Body can't be blank")
      end
    end
  end
end