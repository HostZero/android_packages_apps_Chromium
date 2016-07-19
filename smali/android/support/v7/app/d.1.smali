.class final Landroid/support/v7/app/d;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/app/c;


# direct methods
.method constructor <init>(Landroid/support/v7/app/c;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/c;

    invoke-static {v0}, Landroid/support/v7/app/c;->a(Landroid/support/v7/app/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/c;

    invoke-static {v0}, Landroid/support/v7/app/c;->b(Landroid/support/v7/app/c;)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/c;

    goto :goto_0
.end method
