# Generated by Django 3.1.7 on 2021-03-10 20:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('diseases', '0003_field_select_options'),
    ]

    operations = [
        migrations.AlterField(
            model_name='field',
            name='select_options',
            field=models.CharField(default='', max_length=400),
        ),
    ]
