module Ruboty
  module Handlers
    class GBFRescue < Base
      on(
        /救援依頼！参戦ID：(\w{,8})\n(Lv\d{1,3} .+)\nhttps:\/\/t.co\/\w+/,
        description: "救援依頼！",
        name: "id_rescue",
        all: true
      )

      def id_rescue(message)
        message.reply("#{message.from}が#{message.match_data[2]}の救援を出してるよ #{Time.now}")
      end
    end
  end
end
