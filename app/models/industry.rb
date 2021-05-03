class Industry < ActiveHash::Base
  self.data = [
    { id: 0, industry: ' -------------------------  '},
    { id: 1, industry: 'IT・ソフトウェア・情報処理'  },
    { id: 2, industry: '不動産・建築'                },
    { id: 3, industry: '人材'                        },
    { id: 4, industry: '金融・銀行・証券・保険'      },
    { id: 5, industry: 'コンサル'                    },
    { id: 6, industry: 'メーカー'                    },
    { id: 7, industry: '商社'                        },
    { id: 8, industry: '広告・マスコミ'              },
    { id: 9, industry: 'メーカー'                    },
    { id: 10, industry: '旅行・観光'                 },
    { id: 11, industry: 'インフラ・交通'             },
    { id: 12, industry: '官公庁・公社・団体'         },
  ]

  include ActiveHash::Associations
  has_many :memos
end