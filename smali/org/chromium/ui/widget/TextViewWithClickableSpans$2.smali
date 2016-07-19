.class Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;
.super Ljava/lang/Object;
.source "TextViewWithClickableSpans.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

.field final synthetic val$clickableSpan:Landroid/text/style/ClickableSpan;


# direct methods
.method constructor <init>(Lorg/chromium/ui/widget/TextViewWithClickableSpans;Landroid/text/style/ClickableSpan;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;->this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    iput-object p2, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;->val$clickableSpan:Landroid/text/style/ClickableSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;->val$clickableSpan:Landroid/text/style/ClickableSpan;

    iget-object v1, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;->this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 162
    const/4 v0, 0x1

    return v0
.end method
