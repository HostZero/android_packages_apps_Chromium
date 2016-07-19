.class Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$2;
.super Ljava/lang/Object;
.source "BrowserAccessibilityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$2;->this$0:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$2;->this$0:Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    # invokes: Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendWindowContentChangedOnView()V
    invoke-static {v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->access$000(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    .line 538
    return-void
.end method
