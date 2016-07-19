.class final Landroid/support/v7/app/O;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/app/N;


# direct methods
.method constructor <init>(Landroid/support/v7/app/N;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Landroid/support/v7/app/O;->a:Landroid/support/v7/app/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Landroid/support/v7/app/O;->a:Landroid/support/v7/app/N;

    invoke-static {v0}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/N;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/support/v7/app/O;->a:Landroid/support/v7/app/N;

    invoke-static {v0, v2}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/N;I)V

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/O;->a:Landroid/support/v7/app/N;

    invoke-static {v0}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/N;)I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Landroid/support/v7/app/O;->a:Landroid/support/v7/app/N;

    const/16 v1, 0x6c

    invoke-static {v0, v1}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/N;I)V

    .line 132
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/O;->a:Landroid/support/v7/app/N;

    invoke-static {v0, v2}, Landroid/support/v7/app/N;->a(Landroid/support/v7/app/N;Z)Z

    .line 133
    iget-object v0, p0, Landroid/support/v7/app/O;->a:Landroid/support/v7/app/N;

    invoke-static {v0, v2}, Landroid/support/v7/app/N;->b(Landroid/support/v7/app/N;I)I

    .line 134
    return-void
.end method
