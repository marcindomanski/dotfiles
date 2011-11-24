class FolderCompletion
  def initialize(command, dir)
    @command = command
    @dir = dir
  end

  def matches
    dirs.select do |task|
      task[0, typed.length] == typed
    end
  end

  def typed
    @command[/\s(.+?)$/, 1] || ''
  end

  def dirs
    `ls #{@dir}`.split
  end
end

