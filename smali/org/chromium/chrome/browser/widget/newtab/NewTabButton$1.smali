.class final Lorg/chromium/chrome/browser/widget/newtab/NewTabButton$1;
.super Landroid/util/Property;
.source "NewTabButton.java"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton$1;->get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final set(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 41
    return-void
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/widget/newtab/NewTabButton$1;->set(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    return-void
.end method
