.class public Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;
.super Landroid/widget/ImageView;
.source "AppMenuItemIcon.java"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mCheckedState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 40
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 41
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;->mCheckedState:Z

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;->mergeDrawableStates([I[I)[I

    .line 44
    :cond_0
    return-object v0
.end method

.method protected setChecked(Z)V
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;->mCheckedState:Z

    if-ne p1, v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;->mCheckedState:Z

    .line 28
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/appmenu/AppMenuItemIcon;->refreshDrawableState()V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
