.class final Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$2;
.super Ljava/lang/Object;
.source "AddToHomescreenDialog.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$progressBarView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$2;->val$progressBarView:Landroid/view/View;

    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$2;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$2;->val$progressBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$2;->val$progressBarView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 75
    :cond_0
    return-void
.end method
