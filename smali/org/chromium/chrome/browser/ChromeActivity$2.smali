.class Lorg/chromium/chrome/browser/ChromeActivity$2;
.super Ljava/lang/Object;
.source "ChromeActivity.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity$2;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$2;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    # invokes: Lorg/chromium/chrome/browser/ChromeActivity;->checkAccessibility()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->access$000(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 295
    return-void
.end method
