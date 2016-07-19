.class Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$1;
.super Ljava/lang/Object;
.source "AccessibilityTabModelListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem$1;->this$0:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;

    # invokes: Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->runCloseAnimation()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;->access$000(Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListItem;)V

    .line 124
    return-void
.end method
