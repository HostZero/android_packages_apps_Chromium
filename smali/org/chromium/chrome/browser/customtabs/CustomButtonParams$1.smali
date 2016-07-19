.class Lorg/chromium/chrome/browser/customtabs/CustomButtonParams$1;
.super Ljava/lang/Object;
.source "CustomButtonParams.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams$1;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 134
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 135
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v3

    .line 140
    const v4, 0x800055

    aget v1, v1, v5

    sub-int/2addr v0, v1

    div-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$dimen;->toolbar_height_no_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v3, v4, v0, v1}, Lorg/chromium/ui/widget/Toast;->setGravity(III)V

    .line 144
    invoke-virtual {v3}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 145
    const/4 v0, 0x1

    return v0
.end method
