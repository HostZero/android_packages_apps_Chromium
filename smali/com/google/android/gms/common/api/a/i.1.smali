.class final Lcom/google/android/gms/common/api/a/i;
.super Lcom/google/android/gms/common/api/a/a;


# instance fields
.field private synthetic a:Landroid/app/Dialog;

.field private synthetic b:Lcom/google/android/gms/common/api/a/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a/h;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a/i;->b:Lcom/google/android/gms/common/api/a/h;

    iput-object p2, p0, Lcom/google/android/gms/common/api/a/i;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/i;->b:Lcom/google/android/gms/common/api/a/h;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a/h;->a()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a/i;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
