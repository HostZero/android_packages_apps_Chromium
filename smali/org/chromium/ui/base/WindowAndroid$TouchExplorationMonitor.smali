.class Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;
.super Ljava/lang/Object;
.source "WindowAndroid.java"


# instance fields
.field private mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field final synthetic this$0:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    .prologue
    .line 50
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor$1;-><init>(Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;Lorg/chromium/ui/base/WindowAndroid;)V

    iput-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;->mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 60
    # getter for: Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {p1}, Lorg/chromium/ui/base/WindowAndroid;->access$100(Lorg/chromium/ui/base/WindowAndroid;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;->mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 61
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    # getter for: Lorg/chromium/ui/base/WindowAndroid;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->access$100(Lorg/chromium/ui/base/WindowAndroid;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid$TouchExplorationMonitor;->mTouchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 66
    return-void
.end method
