.class Lorg/chromium/chrome/browser/widget/AlertDialogEditText$1;
.super Ljava/lang/Object;
.source "AlertDialogEditText.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/AlertDialogEditText;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/AlertDialogEditText;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/AlertDialogEditText$1;->this$0:Lorg/chromium/chrome/browser/widget/AlertDialogEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    .prologue
    .line 45
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 46
    invoke-interface {p2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 47
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    iget-object v3, p0, Lorg/chromium/chrome/browser/widget/AlertDialogEditText$1;->this$0:Lorg/chromium/chrome/browser/widget/AlertDialogEditText;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/widget/AlertDialogEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/chromium/chrome/R$color;->light_normal_color:I

    invoke-static {v3, v4}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 53
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
