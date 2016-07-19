.class Lorg/chromium/content/browser/input/GamepadList$1;
.super Ljava/lang/Object;
.source "GamepadList.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/GamepadList;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/GamepadList;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/content/browser/input/GamepadList$1;->this$0:Lorg/chromium/content/browser/input/GamepadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/content/browser/input/GamepadList$1;->this$0:Lorg/chromium/content/browser/input/GamepadList;

    # invokes: Lorg/chromium/content/browser/input/GamepadList;->onInputDeviceAddedImpl(I)V
    invoke-static {v0, p1}, Lorg/chromium/content/browser/input/GamepadList;->access$200(Lorg/chromium/content/browser/input/GamepadList;I)V

    .line 55
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/content/browser/input/GamepadList$1;->this$0:Lorg/chromium/content/browser/input/GamepadList;

    # invokes: Lorg/chromium/content/browser/input/GamepadList;->onInputDeviceChangedImpl(I)V
    invoke-static {v0, p1}, Lorg/chromium/content/browser/input/GamepadList;->access$000(Lorg/chromium/content/browser/input/GamepadList;I)V

    .line 45
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/content/browser/input/GamepadList$1;->this$0:Lorg/chromium/content/browser/input/GamepadList;

    # invokes: Lorg/chromium/content/browser/input/GamepadList;->onInputDeviceRemovedImpl(I)V
    invoke-static {v0, p1}, Lorg/chromium/content/browser/input/GamepadList;->access$100(Lorg/chromium/content/browser/input/GamepadList;I)V

    .line 50
    return-void
.end method
