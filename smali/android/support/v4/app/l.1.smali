.class final Landroid/support/v4/app/l;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/J;


# instance fields
.field private synthetic a:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/k;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 1188
    iput-object p2, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
