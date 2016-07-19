.class public interface abstract Lorg/chromium/sync/signin/AccountManagerDelegate;
.super Ljava/lang/Object;
.source "AccountManagerDelegate.java"


# virtual methods
.method public abstract getAccountsByType(Ljava/lang/String;Lorg/chromium/base/Callback;)V
.end method

.method public abstract getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
.end method

.method public abstract getAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
.end method

.method public abstract hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Lorg/chromium/base/Callback;)V
.end method

.method public abstract invalidateAuthToken(Ljava/lang/String;)V
.end method
