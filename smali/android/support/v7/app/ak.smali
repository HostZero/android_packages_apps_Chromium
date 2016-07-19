.class final Landroid/support/v7/app/ak;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/app/aj;


# direct methods
.method constructor <init>(Landroid/support/v7/app/aj;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Landroid/support/v7/app/ak;->a:Landroid/support/v7/app/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v7/app/ak;->a:Landroid/support/v7/app/aj;

    invoke-virtual {v0}, Landroid/support/v7/app/aj;->dismiss()V

    .line 285
    return-void
.end method
