from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import Profile, Review
from django.contrib.auth import get_user_model


@receiver(post_save, sender=get_user_model())
def create_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)

@receiver(post_save, sender=get_user_model())
def save_profile(sender, instance, **kwargs):
    instance.profile.save()


@receiver(post_save, sender=Review)
def update_user_grade_on_review_save(sender, instance, **kwargs):
    instance.update_user_grade()