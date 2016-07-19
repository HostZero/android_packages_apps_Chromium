.class Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;
.super Ljava/lang/Object;
.source "TextViewWithClickableSpans.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;


# direct methods
.method constructor <init>(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;->this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;->this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    # getter for: Lorg/chromium/ui/widget/TextViewWithClickableSpans;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->access$000(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;->this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    # invokes: Lorg/chromium/ui/widget/TextViewWithClickableSpans;->openDisambiguationMenu()V
    invoke-static {v0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->access$100(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)V

    .line 64
    const/4 v0, 0x1

    goto :goto_0
.end method
