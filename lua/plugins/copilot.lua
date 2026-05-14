return {
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      "github/copilot.vim",
      "nvim-lua/plenary.nvim",
    },
    opts = {
      window = {
        layout = "vertical",  -- opens like VSCode side panel
        width = 0.4,
      },
    },
    keys = {
      { "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "Copilot Chat" },
      { "<leader>ce", "<cmd>CopilotChatExplain<cr>", desc = "Explain Code" },
      { "<leader>cf", "<cmd>CopilotChatFix<cr>", desc = "Fix Code" },
      { "<leader>cr", "<cmd>CopilotChatReview<cr>", desc = "Review Code" },
    },
  }
}
