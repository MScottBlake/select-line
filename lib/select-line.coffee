module.exports =
  activate: ->
    atom.workspaceView.command 'click', '.line-number', => @selectLine()

  selectLine: ->
    @editor = atom.workspace.getActiveEditor()
    if (@editor)
      @editor.selectLine()
