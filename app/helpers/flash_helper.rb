module FlashHelper
  FLASH_CLASSES = { alert: "danger", notice: "success", warning: "warning"}.freeze

  def flash_class(key)
    FLASH_CLASSES.fetch key.to_sym
  end

  def user_facing_flash
    flash.to_hash.slice "alert", "notice", "warning" 
  end
end