.class Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor$1;
.super Ljava/lang/Object;
.source "WindowAndroid.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

.field final synthetic val$this$0:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor$1;->this$1:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

    iput-object p2, p0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor$1;->val$this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor$1;->this$1:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

    iget-object v0, v0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor$1;->this$1:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

    iget-object v1, v1, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    # getter for: Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v1}, Lorg/chromium/ui/base/WindowAndroid;->access$100(Lorg/chromium/ui/base/WindowAndroid;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    # setter for: Lorg/chromium/ui/base/WindowAndroid;->mIsTouchExplorationEnabled:Z
    invoke-static {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->access$002(Lorg/chromium/ui/base/WindowAndroid;Z)Z

    .line 57
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor$1;->this$1:Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;

    iget-object v0, v0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    # invokes: Lorg/chromium/ui/base/WindowAndroid;->refreshWillNotDraw()V
    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->access$200(Lorg/chromium/ui/base/WindowAndroid;)V

    .line 58
    return-void
.end method
