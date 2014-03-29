module.exports =
  activate: ->
    atom.workspaceView.on "mouseup", => @selectLine()

  selectLine: ->
    @editor = atom.workspace.getActiveEditor()
    @cursor = @editor.getCursors()[0]

    if (@cursor.getBufferColumn() == 0 && @cursor.isVisible())
      if (@cursor.getCurrentBufferLine().length != 0)
        @editor.selectLine()
